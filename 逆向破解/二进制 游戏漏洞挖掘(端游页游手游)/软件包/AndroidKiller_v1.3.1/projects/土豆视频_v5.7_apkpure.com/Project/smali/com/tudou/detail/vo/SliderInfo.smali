.class public Lcom/tudou/detail/vo/SliderInfo;
.super Ljava/lang/Object;
.source "SliderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/SliderInfo$SliderType;
    }
.end annotation


# instance fields
.field public index:I

.field public mCornerImage:Ljava/lang/String;

.field public mIcon:Ljava/lang/String;

.field public mSkipInfo:Lcom/youku/vo/SkipInfo;

.field public mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/tudou/detail/vo/SliderInfo$SliderType;)V
    .locals 0
    .param p1, "type"    # Lcom/tudou/detail/vo/SliderInfo$SliderType;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    .line 36
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/SliderInfo;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "ret":Lcom/tudou/detail/vo/SliderInfo;
    if-eqz p0, :cond_1

    .line 42
    :try_start_0
    new-instance v2, Lcom/tudou/detail/vo/SliderInfo;

    invoke-direct {v2}, Lcom/tudou/detail/vo/SliderInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    .local v2, "ret":Lcom/tudou/detail/vo/SliderInfo;
    :try_start_1
    const-string v6, "icon_for_aphone"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/SliderInfo;->mIcon:Ljava/lang/String;

    .line 44
    const-string v6, "name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    .line 45
    const-string v6, "corner_image"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/SliderInfo;->mCornerImage:Ljava/lang/String;

    .line 46
    const-string/jumbo v6, "slider_type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5}, Lcom/tudou/detail/vo/SliderInfo;->string2SliderType(Ljava/lang/String;)Lcom/tudou/detail/vo/SliderInfo$SliderType;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    .line 48
    iget-object v6, v2, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    sget-object v7, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v6, v7, :cond_0

    .line 49
    const-string/jumbo v6, "skip_inf"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 50
    .local v4, "skipInfoJSON":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "sSkipInfo":Ljava/lang/String;
    const-class v6, Lcom/youku/vo/SkipInfo;

    invoke-static {v3, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SkipInfo;

    iput-object v6, v2, Lcom/tudou/detail/vo/SliderInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "sSkipInfo":Ljava/lang/String;
    .end local v4    # "skipInfoJSON":Lorg/json/JSONObject;
    :cond_0
    move-object v1, v2

    .line 59
    .end local v2    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    .end local v5    # "type":Ljava/lang/String;
    .restart local v1    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    :cond_1
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    .restart local v2    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    .restart local v1    # "ret":Lcom/tudou/detail/vo/SliderInfo;
    goto :goto_1
.end method

.method private static string2SliderType(Ljava/lang/String;)Lcom/tudou/detail/vo/SliderInfo$SliderType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "ret":Lcom/tudou/detail/vo/SliderInfo$SliderType;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const-string/jumbo v1, "summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SUMMARY:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const-string v1, "dig"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->DIG:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "feature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 71
    :cond_3
    const-string v1, "point"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 73
    :cond_4
    const-string v1, "podcast_user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 75
    :cond_5
    const-string v1, "comment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->COMMENT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 77
    :cond_6
    const-string v1, "gift"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 78
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->GIFT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 79
    :cond_7
    const-string/jumbo v1, "skip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0

    .line 81
    :cond_8
    const-string/jumbo v1, "vote"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    check-cast p1, Lcom/tudou/detail/vo/SliderInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliderInfo{mIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/SliderInfo;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSliderType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
