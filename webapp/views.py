import nltk
import pandas as pd
from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
from django.core.paginator import Paginator
from django.db.models import Q
from django.shortcuts import render, redirect
from sklearn.feature_extraction.text import CountVectorizer, TfidfTransformer
from sklearn.metrics.pairwise import cosine_similarity

from .models import Makanan

from Sastrawi.Stemmer.StemmerFactory import StemmerFactory

# create stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()

nltk.download('punkt')

stop_factory = StopWordRemoverFactory().get_stop_words()

def stemmed_words(doc):
    return ' '.join([stemmer.stem(word) for word in nltk.word_tokenize(doc) if word.lower() not in stop_factory])
# Create your views here.

def index(request):
    query = request.POST.get('q', '')

    queryset = Makanan.objects.all()
    data = list(queryset.values())

    df = pd.DataFrame(data)
    df['stemmed_deskripsi'] = df['deskripsi'].apply(stemmed_words)
    df['stemmed_bahan'] = df['bahan'].apply(stemmed_words)
    df['stemmed_nama'] = df['nama'].apply(stemmed_words)

    df['combined_text'] = df['stemmed_deskripsi'] + ' ' + df['stemmed_bahan'] + ' ' + df['stemmed_nama']

    count_vect = CountVectorizer()
    X_train_counts = count_vect.fit_transform(df['combined_text'])

    tfidf_transformer = TfidfTransformer()
    X_train_tfidf = tfidf_transformer.fit_transform(X_train_counts)

    results = []
    if query:
        stemmed_query = [stemmed_words(query)]
        X_query_counts = count_vect.transform(stemmed_query)
        X_query_tfidf = tfidf_transformer.transform(X_query_counts)

        cosine_similarities = cosine_similarity(X_query_tfidf, X_train_tfidf).flatten()
        df['weight'] = cosine_similarities
        df = df.sort_values(by='weight', ascending=False)

        results = df[df['weight'] > 0].to_dict(orient='records')

    return render(request, 'index.html', {'results': results, 'query': query})


def alldata(request):
    query = request.GET.get('q', '')
    if query:
        makanan = Makanan.objects.filter(
            Q(nama__icontains=query) |
            Q(bahan__icontains=query) |
            Q(deskripsi__icontains=query)
        )
    else:
        makanan = Makanan.objects.all()

    makanan = Makanan.objects.all()
    paginator = Paginator(makanan, 5)
    page_number = request.GET.get('page')
    makanan = paginator.get_page(page_number)

    context = {
        'makanan': makanan,
        'query': query,
    }

    return render(request, "alldata.html", {'makanan': makanan})


def deletemakanan(request, id):
    mkn = Makanan.objects.get(id=id)
    mkn.delete()
    return redirect("/alldata")


def test(request):
    query = request.POST.get('q', '')

    queryset = Makanan.objects.all()
    data = list(queryset.values())

    # Convert the food data into a DataFrame
    df = pd.DataFrame(data)
    df['stemmed_deskripsi'] = df['deskripsi'].apply(stemmed_words)
    df['stemmed_bahan'] = df['bahan'].apply(stemmed_words)
    df['stemmed_nama'] = df['nama'].apply(stemmed_words)
    df['combined_text'] = df['stemmed_deskripsi'] + ' ' + df['stemmed_bahan'] + ' ' + df['stemmed_nama']


    count_vect = CountVectorizer()
    X_train_counts = count_vect.fit_transform(df['combined_text'])

    tfidf_transformer = TfidfTransformer()
    X_train_tfidf = tfidf_transformer.fit_transform(X_train_counts)

    if query:
        stemmed_query = [stemmed_words(query)]
        X_query_counts = count_vect.transform(stemmed_query)
        X_query_tfidf = tfidf_transformer.transform(X_query_counts)
        cosine_similarities = cosine_similarity(X_query_tfidf, X_train_tfidf).flatten()
        df['weight'] = cosine_similarities
        df.sort_values(by='weight', ascending=False, inplace=True)

    # Print the DataFrame
    # print(df[['name', 'deskripsi', 'stemmed_deskripsi', 'weight']])
    return render(request, 'search_test.html', {'data': df.to_html()})


# def search():
#     queryset = Makanan.objects.all()
#
#     data = list(queryset.values())
#
#     # Convert the food data into a DataFrame
#     df = pd.DataFrame(data)
#     dd(data)
