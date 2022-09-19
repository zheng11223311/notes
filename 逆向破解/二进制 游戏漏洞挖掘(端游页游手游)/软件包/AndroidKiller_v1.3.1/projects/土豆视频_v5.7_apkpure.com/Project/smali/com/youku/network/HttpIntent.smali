.class public Lcom/youku/network/HttpIntent;
.super Landroid/content/Intent;
.source "HttpIntent.java"


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "connect_timeout"

.field public static final IS_CACHE_DATA:Ljava/lang/String; = "is_cache_data"

.field public static final IS_SET_COOKIE:Ljava/lang/String; = "is_set_cookie"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final POST_DATA:Ljava/lang/String; = "data"

.field public static final READ_TIMEOUT:Ljava/lang/String; = "read_timeout"

.field public static final REQUEST_TAG:Ljava/lang/String; = "request_tag"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field public connectTimeout:I

.field private parseObject:Ljava/lang/Object;

.field public readTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 54
    const-string/jumbo v0, "uri"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v0, "method"

    invoke-virtual {p0, v0, p2}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v0, "is_set_cookie"

    invoke-virtual {p0, v0, p3}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    const-string v0, "is_cache_data"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v1, "connect_timeout"

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "read_timeout"

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    return-void

    .line 58
    :cond_0
    sget v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    goto :goto_0

    .line 59
    :cond_1
    sget v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reqMethod"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .param p4, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string/jumbo v0, "uri"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v0, "method"

    invoke-virtual {p0, v0, p2}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v0, "is_set_cookie"

    invoke-virtual {p0, v0, p3}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v0, "is_cache_data"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v1, "connect_timeout"

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "read_timeout"

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v0, "data"

    invoke-virtual {p0, v0, p4}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    return-void

    .line 67
    :cond_0
    sget v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    goto :goto_0

    .line 68
    :cond_1
    sget v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isSetCookie"    # Z

    .prologue
    .line 50
    const-string v0, "GET"

    invoke-direct {p0, p1, v0, p2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public getParseObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/network/HttpIntent;->parseObject:Ljava/lang/Object;

    return-object v0
.end method

.method public putParseObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/youku/network/HttpIntent;->parseObject:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public setCache(Z)Lcom/youku/network/HttpIntent;
    .locals 1
    .param p1, "isCacheData"    # Z

    .prologue
    .line 107
    const-string v0, "is_cache_data"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    return-object p0
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/youku/network/HttpIntent;->connectTimeout:I

    .line 78
    const-string v0, "connect_timeout"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/network/HttpIntent;->readTimeout:I

    .line 86
    const-string v0, "read_timeout"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public setRequestTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestTag"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "request_tag"

    invoke-virtual {p0, v0, p1}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    return-void
.end method
