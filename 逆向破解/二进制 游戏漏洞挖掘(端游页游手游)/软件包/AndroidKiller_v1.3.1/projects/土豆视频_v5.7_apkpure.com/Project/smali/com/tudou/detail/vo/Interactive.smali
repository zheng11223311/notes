.class public Lcom/tudou/detail/vo/Interactive;
.super Ljava/lang/Object;
.source "Interactive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/Interactive$SpecialTopic;,
        Lcom/tudou/detail/vo/Interactive$SelectnessTab;,
        Lcom/tudou/detail/vo/Interactive$Html5;
    }
.end annotation


# static fields
.field public static final TYPE_PLAY_DETAIL_TAB:Ljava/lang/String; = "play_details_tab"

.field public static final TYPE_SELECTNESS_TAB:Ljava/lang/String; = "selectness_tab"

.field public static final TYPE_SPECIAL_TOPIC:Ljava/lang/String; = "special_topic"

.field public static final TYPE_THE_HTML5:Ljava/lang/String; = "the_html5"


# instance fields
.field public mHtml5_1:Lcom/tudou/detail/vo/Interactive$Html5;

.field public mHtml5_2:Lcom/tudou/detail/vo/Interactive$Html5;

.field public mHtml5_3:Lcom/tudou/detail/vo/Interactive$Html5;

.field public mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

.field public mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/Interactive;
    .locals 17
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    const/4 v9, 0x0

    .line 35
    .local v9, "ret":Lcom/tudou/detail/vo/Interactive;
    if-eqz p0, :cond_4

    .line 36
    :try_start_0
    new-instance v10, Lcom/tudou/detail/vo/Interactive;

    invoke-direct {v10}, Lcom/tudou/detail/vo/Interactive;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .end local v9    # "ret":Lcom/tudou/detail/vo/Interactive;
    .local v10, "ret":Lcom/tudou/detail/vo/Interactive;
    :try_start_1
    const-string/jumbo v15, "the_tab_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 38
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_7

    .line 39
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v7, v15, :cond_7

    .line 40
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 41
    .local v5, "child":Lorg/json/JSONObject;
    const-string/jumbo v15, "show_type"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, "showType":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 43
    const-string/jumbo v15, "special_topic"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 44
    new-instance v15, Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    invoke-direct {v15}, Lcom/tudou/detail/vo/Interactive$SpecialTopic;-><init>()V

    iput-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    .line 45
    iget-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    const-string/jumbo v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mTitle:Ljava/lang/String;

    .line 46
    iget-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    const-string v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mTypeIcon:Ljava/lang/String;

    .line 47
    iget-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    const-string v16, "image_800_282"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mContentImage:Ljava/lang/String;

    .line 48
    const-string/jumbo v15, "skip_inf"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 49
    .local v13, "skipInfoJSON":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "sSkipInfo":Ljava/lang/String;
    iget-object v0, v10, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    move-object/from16 v16, v0

    const-class v15, Lcom/youku/vo/SkipInfo;

    invoke-static {v11, v15}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/vo/SkipInfo;

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 39
    .end local v11    # "sSkipInfo":Ljava/lang/String;
    .end local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v15, "selectness_tab"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "play_details_tab"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 52
    :cond_2
    const-string v15, "card_inf"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 53
    .local v3, "cardArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 54
    new-instance v15, Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    invoke-direct {v15}, Lcom/tudou/detail/vo/Interactive$SelectnessTab;-><init>()V

    iput-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    .line 55
    iget-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    const-string/jumbo v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mTitle:Ljava/lang/String;

    .line 56
    iget-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    .line 57
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v8, v15, :cond_0

    .line 58
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    .local v4, "cardJson":Lorg/json/JSONObject;
    new-instance v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;

    invoke-direct {v2}, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;-><init>()V

    .line 60
    .local v2, "card":Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;
    const-string v15, "image_b_r_title"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->image_b_r_title:Ljava/lang/String;

    .line 61
    const-string/jumbo v15, "title"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->title:Ljava/lang/String;

    .line 62
    const-string v15, "image_448_252"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->image_448_252:Ljava/lang/String;

    .line 63
    const-string v15, "bottom_title"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->bottom_title:Ljava/lang/String;

    .line 64
    const-string/jumbo v15, "sub_title"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->sub_title:Ljava/lang/String;

    .line 65
    const-string/jumbo v15, "skip_inf"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 66
    .restart local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 67
    .restart local v11    # "sSkipInfo":Ljava/lang/String;
    const-class v15, Lcom/youku/vo/SkipInfo;

    invoke-static {v11, v15}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/vo/SkipInfo;

    iput-object v15, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 68
    iget-object v15, v10, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v15, v15, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 71
    .end local v2    # "card":Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;
    .end local v3    # "cardArray":Lorg/json/JSONArray;
    .end local v4    # "cardJson":Lorg/json/JSONObject;
    .end local v8    # "j":I
    .end local v11    # "sSkipInfo":Ljava/lang/String;
    .end local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v15, "the_html5"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 72
    new-instance v14, Lcom/tudou/detail/vo/Interactive$Html5;

    invoke-direct {v14}, Lcom/tudou/detail/vo/Interactive$Html5;-><init>()V

    .line 74
    .local v14, "tHtml5":Lcom/tudou/detail/vo/Interactive$Html5;
    const-string/jumbo v15, "title"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/tudou/detail/vo/Interactive$Html5;->mTitle:Ljava/lang/String;

    .line 75
    const-string v15, "icon"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/tudou/detail/vo/Interactive$Html5;->mContentImage:Ljava/lang/String;

    .line 76
    const-string/jumbo v15, "skip_inf"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 77
    .restart local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 78
    .restart local v11    # "sSkipInfo":Ljava/lang/String;
    const-class v15, Lcom/youku/vo/SkipInfo;

    invoke-static {v11, v15}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/vo/SkipInfo;

    iput-object v15, v14, Lcom/tudou/detail/vo/Interactive$Html5;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 80
    const-string v15, "0"

    iget-object v0, v14, Lcom/tudou/detail/vo/Interactive$Html5;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->the_location:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 81
    iput-object v14, v10, Lcom/tudou/detail/vo/Interactive;->mHtml5_1:Lcom/tudou/detail/vo/Interactive$Html5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 94
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v5    # "child":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v11    # "sSkipInfo":Ljava/lang/String;
    .end local v12    # "showType":Ljava/lang/String;
    .end local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    .end local v14    # "tHtml5":Lcom/tudou/detail/vo/Interactive$Html5;
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 95
    .end local v10    # "ret":Lcom/tudou/detail/vo/Interactive;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v9    # "ret":Lcom/tudou/detail/vo/Interactive;
    :goto_3
    sget-object v15, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v9, 0x0

    .line 98
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-object v9

    .line 82
    .end local v9    # "ret":Lcom/tudou/detail/vo/Interactive;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v5    # "child":Lorg/json/JSONObject;
    .restart local v7    # "i":I
    .restart local v10    # "ret":Lcom/tudou/detail/vo/Interactive;
    .restart local v11    # "sSkipInfo":Ljava/lang/String;
    .restart local v12    # "showType":Ljava/lang/String;
    .restart local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    .restart local v14    # "tHtml5":Lcom/tudou/detail/vo/Interactive$Html5;
    :cond_5
    :try_start_2
    const-string v15, "1"

    iget-object v0, v14, Lcom/tudou/detail/vo/Interactive$Html5;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->the_location:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 83
    iput-object v14, v10, Lcom/tudou/detail/vo/Interactive;->mHtml5_2:Lcom/tudou/detail/vo/Interactive$Html5;

    goto/16 :goto_1

    .line 84
    :cond_6
    const-string v15, "2"

    iget-object v0, v14, Lcom/tudou/detail/vo/Interactive$Html5;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->the_location:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 85
    iput-object v14, v10, Lcom/tudou/detail/vo/Interactive;->mHtml5_3:Lcom/tudou/detail/vo/Interactive$Html5;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 94
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v5    # "child":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v10    # "ret":Lcom/tudou/detail/vo/Interactive;
    .end local v11    # "sSkipInfo":Ljava/lang/String;
    .end local v12    # "showType":Ljava/lang/String;
    .end local v13    # "skipInfoJSON":Lorg/json/JSONObject;
    .end local v14    # "tHtml5":Lcom/tudou/detail/vo/Interactive$Html5;
    .restart local v9    # "ret":Lcom/tudou/detail/vo/Interactive;
    :catch_1
    move-exception v6

    goto :goto_3

    .end local v9    # "ret":Lcom/tudou/detail/vo/Interactive;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v10    # "ret":Lcom/tudou/detail/vo/Interactive;
    :cond_7
    move-object v9, v10

    .end local v10    # "ret":Lcom/tudou/detail/vo/Interactive;
    .restart local v9    # "ret":Lcom/tudou/detail/vo/Interactive;
    goto :goto_4
.end method
