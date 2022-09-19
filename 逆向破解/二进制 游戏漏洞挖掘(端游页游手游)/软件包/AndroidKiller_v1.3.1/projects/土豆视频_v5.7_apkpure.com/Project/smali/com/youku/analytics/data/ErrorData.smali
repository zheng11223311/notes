.class public Lcom/youku/analytics/data/ErrorData;
.super Ljava/lang/Object;
.source "ErrorData.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field private static final CONTENT:Ljava/lang/String; = "errorinfo"

.field private static final EVER:Ljava/lang/String; = "e1"

.field private static final INFO:Ljava/lang/String; = "i"

.field private static final TITLE:Ljava/lang/String; = "errorname"


# instance fields
.field private mBaseData:Lcom/youku/analytics/data/ActionBaseData;

.field private mContent:Ljava/lang/String;

.field private mErrorVer:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 1
    .param p1, "baseData"    # Lcom/youku/analytics/data/ActionBaseData;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p2, :cond_0

    .line 33
    iput-object p1, p0, Lcom/youku/analytics/data/ErrorData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/ErrorData;->mTitle:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p2}, Lcom/youku/analytics/data/ErrorData;->generateContent(Ljava/lang/Throwable;)V

    .line 36
    invoke-static {p3}, Lcom/youku/analytics/utils/Tools;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/ErrorData;->mErrorVer:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method private generateContent(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 48
    .local v3, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 49
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/analytics/data/ErrorData;->mContent:Ljava/lang/String;

    .line 56
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 57
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V

    .line 61
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "stringWriter":Ljava/io/StringWriter;
    :goto_1
    return-void

    .line 52
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "printWriter":Ljava/io/PrintWriter;
    .restart local v3    # "stringWriter":Ljava/io/StringWriter;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/analytics/data/ErrorData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0}, Lcom/youku/analytics/data/ActionBaseData;->isValid()Z

    move-result v0

    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/analytics/data/ErrorData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/analytics/data/ActionBaseData;->setSession(Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method public write(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v0, "info":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/youku/analytics/data/ErrorData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const-string v1, "errorname"

    iget-object v2, p0, Lcom/youku/analytics/data/ErrorData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/youku/analytics/data/ErrorData;->mContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const-string v1, "errorinfo"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "reason"

    iget-object v4, p0, Lcom/youku/analytics/data/ErrorData;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 73
    const-string v1, "i"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/youku/analytics/data/ErrorData;->mErrorVer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    const-string v1, "e1"

    iget-object v2, p0, Lcom/youku/analytics/data/ErrorData;->mErrorVer:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/youku/analytics/data/ErrorData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    if-eqz v1, :cond_4

    .line 77
    iget-object v1, p0, Lcom/youku/analytics/data/ErrorData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v1, p1}, Lcom/youku/analytics/data/ActionBaseData;->write(Lorg/json/JSONObject;)V

    .line 79
    :cond_4
    return-void
.end method
