.class public Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;
.super Lcom/sea_monster/network/ApiReqeust;
.source "BaseApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/network/BaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultApiReqeust"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/sea_monster/network/ApiReqeust",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sea_monster/network/BaseApi;

.field private weakCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Lcom/sea_monster/network/ApiCallback;)V
    .locals 1
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p4, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;)V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Ljava/io/InputStream;Lcom/sea_monster/network/ApiCallback;)V
    .locals 1
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .param p4, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/io/InputStream;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p5, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    .line 106
    invoke-direct {p0, p2, p3, p4}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;Ljava/io/InputStream;)V

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Ljava/io/InputStream;Ljava/lang/String;Lcom/sea_monster/network/ApiCallback;)V
    .locals 1
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .param p4, "stream"    # Ljava/io/InputStream;
    .param p5, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p6, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    .line 122
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Ljava/util/List;Lcom/sea_monster/network/ApiCallback;)V
    .locals 1
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p5, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    .line 95
    invoke-direct {p0, p2, p3, p4}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;Ljava/util/List;)V

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Lcom/sea_monster/network/ApiCallback;)V
    .locals 1
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .param p5, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p6, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    .line 101
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;)V

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Lcom/sea_monster/network/ApiCallback;)V
    .locals 6
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .param p5, "stream"    # Ljava/io/InputStream;
    .param p6, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p7, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/network/BaseApi;ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/sea_monster/network/ApiCallback;)V
    .locals 7
    .param p2, "method"    # I
    .param p3, "uri"    # Ljava/net/URI;
    .param p5, "stream"    # Ljava/io/InputStream;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sea_monster/network/ApiCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p8, "callback":Lcom/sea_monster/network/ApiCallback;, "Lcom/sea_monster/network/ApiCallback<TT;>;"
    iput-object p1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/sea_monster/network/ApiReqeust;-><init>(ILjava/net/URI;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    .line 119
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/Serializable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    .local p2, "obj":Ljava/io/Serializable;, "TT;"
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    iget-object v1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Lcom/sea_monster/network/BaseApi;->releaseRequest(Ljava/lang/ref/WeakReference;Lcom/sea_monster/network/AbstractHttpRequest;)V

    .line 129
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->enqueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/network/ApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/sea_monster/network/ApiCallback;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V

    .line 131
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 85
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/io/Serializable;)V

    return-void
.end method

.method public onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V
    .locals 2
    .param p2, "e"    # Lcom/sea_monster/exception/BaseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;",
            "Lcom/sea_monster/exception/BaseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;, "Lcom/sea_monster/network/BaseApi$DefaultApiReqeust<TT;>;"
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->this$0:Lcom/sea_monster/network/BaseApi;

    iget-object v1, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Lcom/sea_monster/network/BaseApi;->releaseRequest(Ljava/lang/ref/WeakReference;Lcom/sea_monster/network/AbstractHttpRequest;)V

    .line 136
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->enqueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;->weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/network/ApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/sea_monster/network/ApiCallback;->onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V

    .line 138
    :cond_0
    return-void
.end method
