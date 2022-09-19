.class public Lcom/tudou/detail/vo/Video$Language;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Language"
.end annotation


# instance fields
.field public mIsDefault:Z

.field public mLang:Ljava/lang/String;

.field public mLangCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/Video$Language;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "ret":Lcom/tudou/detail/vo/Video$Language;
    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lcom/tudou/detail/vo/Video$Language;

    .end local v0    # "ret":Lcom/tudou/detail/vo/Video$Language;
    invoke-direct {v0}, Lcom/tudou/detail/vo/Video$Language;-><init>()V

    .line 22
    .restart local v0    # "ret":Lcom/tudou/detail/vo/Video$Language;
    const-string v1, "lang"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video$Language;->mLang:Ljava/lang/String;

    .line 23
    const-string v1, "langcode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/detail/vo/Video$Language;->mLangCode:Ljava/lang/String;

    .line 24
    const-string v1, "is_default"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tudou/detail/vo/Video$Language;->mIsDefault:Z

    .line 26
    :cond_0
    return-object v0
.end method
