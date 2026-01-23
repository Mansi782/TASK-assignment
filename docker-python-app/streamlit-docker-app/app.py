import streamlit as st

st.title("Hello Streamlit + Docker 👋")

name = st.text_input("Enter your name")

if name:
    st.success(f"Hello, {name}! Welcome to Streamlit 🚀")
