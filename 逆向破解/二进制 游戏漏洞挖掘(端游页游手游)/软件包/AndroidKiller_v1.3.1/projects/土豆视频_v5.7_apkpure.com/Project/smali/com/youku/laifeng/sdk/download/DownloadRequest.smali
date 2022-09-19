.class public Lcom/youku/laifeng/sdk/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field private mCanceled:Z

.field private mCustomHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDestinationURI:Landroid/net/Uri;

.field private mDownloadId:I

.field private mDownloadListener:Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

.field private mDownloadState:I

.field private mPriority:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

.field private mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

.field private mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadState:I

    .line 41
    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mCanceled:Z

    .line 47
    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->NORMAL:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mPriority:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mCustomHeader:Ljava/util/HashMap;

    .line 66
    const/16 v1, 0x64

    iput v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadState:I

    .line 67
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mUri:Landroid/net/Uri;

    .line 68
    return-void
.end method


# virtual methods
.method public addCustomHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mCustomHeader:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mCanceled:Z

    .line 111
    return-void
.end method

.method public compareTo(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I
    .locals 4
    .param p1, "another"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getPriority()Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    move-result-object v0

    .line 189
    .local v0, "leftPriority":Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getPriority()Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    move-result-object v1

    .line 191
    .local v1, "rightPriority":Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadId:I

    iget v3, p1, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadId:I

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->compareTo(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->finish(Lcom/youku/laifeng/sdk/download/DownloadRequest;)V

    .line 182
    return-void
.end method

.method getCustomHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mCustomHeader:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDestinationURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDestinationURI:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDownloadId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadId:I

    return v0
.end method

.method getDownloadListener()Lcom/youku/laifeng/sdk/download/DownloadStatusListener;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadListener:Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    return-object v0
.end method

.method getDownloadState()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadState:I

    return v0
.end method

.method public getPriority()Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mPriority:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/youku/laifeng/sdk/download/RetryPolicy;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youku/laifeng/sdk/download/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/download/DefaultRetryPolicy;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mCanceled:Z

    return v0
.end method

.method public setDestinationURI(Landroid/net/Uri;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 0
    .param p1, "destinationURI"    # Landroid/net/Uri;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDestinationURI:Landroid/net/Uri;

    .line 135
    return-object p0
.end method

.method final setDownloadId(I)V
    .locals 0
    .param p1, "downloadId"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadId:I

    .line 157
    return-void
.end method

.method public setDownloadListener(Lcom/youku/laifeng/sdk/download/DownloadStatusListener;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 0
    .param p1, "downloadListener"    # Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadListener:Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    .line 173
    return-object p0
.end method

.method setDownloadRequestQueue(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;)V
    .locals 0
    .param p1, "downloadQueue"    # Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    .line 178
    return-void
.end method

.method setDownloadState(I)V
    .locals 0
    .param p1, "mDownloadState"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mDownloadState:I

    .line 165
    return-void
.end method

.method public setPriority(Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 0
    .param p1, "priority"    # Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mPriority:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 84
    return-object p0
.end method

.method public setRetryPolicy(Lcom/youku/laifeng/sdk/download/RetryPolicy;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 0
    .param p1, "mRetryPolicy"    # Lcom/youku/laifeng/sdk/download/RetryPolicy;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

    .line 144
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 0
    .param p1, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequest;->mUri:Landroid/net/Uri;

    .line 126
    return-object p0
.end method
