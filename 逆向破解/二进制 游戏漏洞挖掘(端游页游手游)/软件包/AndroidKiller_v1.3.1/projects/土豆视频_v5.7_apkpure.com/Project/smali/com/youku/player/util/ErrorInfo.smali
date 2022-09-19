.class public Lcom/youku/player/util/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field private exceptionString:Ljava/lang/String;

.field private responseString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resoponseSring"    # Ljava/lang/String;
    .param p2, "exceptionString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public addExceptionString(Ljava/lang/String;)V
    .locals 2
    .param p1, "exceptionStr"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n******\u5206\u5272\u7ebf**************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public addResponseString(Ljava/lang/String;)V
    .locals 2
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n*******\u5206\u5272\u7ebf*************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public getExceptionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/player/util/ErrorInfo;->exceptionString:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/player/util/ErrorInfo;->responseString:Ljava/lang/String;

    return-object v0
.end method
