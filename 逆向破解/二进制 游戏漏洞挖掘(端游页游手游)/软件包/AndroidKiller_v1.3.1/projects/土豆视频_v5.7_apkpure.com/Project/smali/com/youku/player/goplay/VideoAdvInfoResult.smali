.class public Lcom/youku/player/goplay/VideoAdvInfoResult;
.super Ljava/lang/Object;
.source "VideoAdvInfoResult.java"


# static fields
.field private static exceptionString:Ljava/lang/String;

.field private static responseString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/youku/player/goplay/VideoAdvInfoResult;->exceptionString:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/youku/player/goplay/VideoAdvInfoResult;->responseString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/youku/player/goplay/VideoAdvInfoResult;->responseString:Ljava/lang/String;

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/youku/player/goplay/VideoAdvInfoResult;->exceptionString:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mResoponseSring"    # Ljava/lang/String;
    .param p2, "mExceptionString"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sput-object p1, Lcom/youku/player/goplay/VideoAdvInfoResult;->responseString:Ljava/lang/String;

    .line 10
    sput-object p2, Lcom/youku/player/goplay/VideoAdvInfoResult;->exceptionString:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static getExceptionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/youku/player/goplay/VideoAdvInfoResult;->exceptionString:Ljava/lang/String;

    return-object v0
.end method

.method public static getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/youku/player/goplay/VideoAdvInfoResult;->responseString:Ljava/lang/String;

    return-object v0
.end method
