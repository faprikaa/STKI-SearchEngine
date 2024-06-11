import nltk
import pandas as pd
from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
from django.core.paginator import Paginator
from django.shortcuts import render, redirect
from django_dump_die.middleware import dd
from nltk.stem import PorterStemmer
from nltk.corpus import stopwords
from sklearn.feature_extraction.text import CountVectorizer, TfidfTransformer
from sklearn.metrics.pairwise import cosine_similarity

from .models import Makanan

from Sastrawi.Stemmer.StemmerFactory import StemmerFactory
# create stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()

# Define a custom tokenizer that stems words and removes stopwords
# stemmer = PorterStemmer()
# stop_words = set(stopwords.words('indonesia'))

stop_factory = StopWordRemoverFactory().get_stop_words()


def stemmed_words(doc):
    return ' '.join([stemmer.stem(word) for word in nltk.word_tokenize(doc) if word.lower() not in stop_factory])
# Create your views here.

def index(request):
    return render(request, 'index.html')


def alldata(request):
    makanan = Makanan.objects.all()
    paginator = Paginator(makanan, 5)
    page_number = request.GET.get('page')
    makanan = paginator.get_page(page_number)

    return render(request, "alldata.html", {'makanan': makanan})


def deletemakanan(request, id):
    mkn = Makanan.objects.get(id=id)
    mkn.delete()
    return redirect("/alldata")


def test(request):
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

    query = ["tempe"]
    stemmed_query = [stemmed_words(query[0])]
    X_query_counts = count_vect.transform(stemmed_query)
    X_query_tfidf = tfidf_transformer.transform(X_query_counts)

    # Calculate cosine similarity between the query and each document in the dataset
    cosine_similarities = cosine_similarity(X_query_tfidf, X_train_tfidf).flatten()

    # Add the similarity scores (weights) to the DataFrame
    df['weight'] = cosine_similarities

    # Print the DataFrame
    # print(df[['name', 'deskripsi', 'stemmed_deskripsi', 'weight']])

    print(df)
    return render(request, 'search_test.html', {'data': df.to_html()})


def search():
    queryset = Makanan.objects.all()

    data = list(queryset.values())

    # Convert the food data into a DataFrame
    df = pd.DataFrame(data)
    dd(data)
