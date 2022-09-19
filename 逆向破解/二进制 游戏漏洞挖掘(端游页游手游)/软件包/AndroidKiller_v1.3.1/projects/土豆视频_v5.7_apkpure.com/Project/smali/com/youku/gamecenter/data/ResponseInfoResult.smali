.class public Lcom/youku/gamecenter/data/ResponseInfoResult;
.super Ljava/lang/Object;
.source "ResponseInfoResult.java"


# instance fields
.field private exceptionString:Ljava/lang/String;

.field private responseString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->exceptionString:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->responseString:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->responseString:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->exceptionString:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mResoponseSring"    # Ljava/lang/String;
    .param p2, "mExceptionString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->exceptionString:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->responseString:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->responseString:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->exceptionString:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getExceptionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->exceptionString:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/data/ResponseInfoResult;->responseString:Ljava/lang/String;

    return-object v0
.end method
