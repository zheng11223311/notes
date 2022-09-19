.class public Lcom/youku/player/goplay/VideoInfoReasult;
.super Ljava/lang/Object;
.source "VideoInfoReasult.java"


# static fields
.field private static exceptionString:Ljava/lang/String;

.field private static responseString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->exceptionString:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->responseString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->responseString:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->exceptionString:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mResoponseSring"    # Ljava/lang/String;
    .param p2, "mExceptionString"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sput-object p1, Lcom/youku/player/goplay/VideoInfoReasult;->responseString:Ljava/lang/String;

    .line 9
    sput-object p2, Lcom/youku/player/goplay/VideoInfoReasult;->exceptionString:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static getExceptionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->exceptionString:Ljava/lang/String;

    return-object v0
.end method

.method public static getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->responseString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addExceptionString(Ljava/lang/String;)V
    .locals 2
    .param p1, "exceptionStr"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/goplay/VideoInfoReasult;->exceptionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n******\u5206\u5272\u7ebf**************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->exceptionString:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public addResponseString(Ljava/lang/String;)V
    .locals 2
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/goplay/VideoInfoReasult;->responseString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n*******\u5206\u5272\u7ebf*************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/goplay/VideoInfoReasult;->responseString:Ljava/lang/String;

    .line 24
    return-void
.end method
