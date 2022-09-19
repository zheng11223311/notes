.class public Lcom/youku/player/goplay/GoplayException;
.super Ljava/lang/Object;
.source "GoplayException.java"


# instance fields
.field private errorCode:I

.field private errorInfo:Ljava/lang/String;

.field public itemCode:Ljava/lang/String;

.field private mShowTip:Z

.field public payInfo:Lcom/youku/player/module/PayInfo;

.field public videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field private videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

.field public webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/goplay/GoplayException;->errorCode:I

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/goplay/GoplayException;->mShowTip:Z

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/player/goplay/GoplayException;->errorCode:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/player/goplay/GoplayException;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrlInfo()Lcom/youku/player/module/VideoUrlInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/player/goplay/GoplayException;->videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method public setErrorCode(I)Lcom/youku/player/goplay/GoplayException;
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/youku/player/goplay/GoplayException;->errorCode:I

    .line 29
    return-object p0
.end method

.method public setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/player/goplay/GoplayException;->errorInfo:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public setShowTip(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/youku/player/goplay/GoplayException;->mShowTip:Z

    .line 55
    return-void
.end method

.method public setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/youku/player/goplay/GoplayException;->videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 51
    return-void
.end method

.method public showTip()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/youku/player/goplay/GoplayException;->mShowTip:Z

    return v0
.end method
