.class public abstract Lcom/youku/player/request/PlayRequest;
.super Ljava/lang/Object;
.source "PlayRequest.java"


# instance fields
.field private mCanceled:Z

.field private mPlayVideoinfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method public constructor <init>(Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 1
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/request/PlayRequest;->mCanceled:Z

    .line 15
    iput-object p1, p0, Lcom/youku/player/request/PlayRequest;->mPlayVideoinfo:Lcom/youku/player/module/PlayVideoInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/request/PlayRequest;->mCanceled:Z

    .line 22
    return-void
.end method

.method public getPlayVideoinfo()Lcom/youku/player/module/PlayVideoInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/request/PlayRequest;->mPlayVideoinfo:Lcom/youku/player/module/PlayVideoInfo;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/youku/player/request/PlayRequest;->mCanceled:Z

    return v0
.end method

.method public abstract playRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V
.end method
