.class public Lcom/youku/vo/SkipInfo;
.super Ljava/lang/Object;
.source "SkipInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SELECTNESS_TAB_LIST_TYPE:Ljava/lang/String; = "selectness_tab_list"

.field public static final SPECIAL_TOPIC_TYPE:Ljava/lang/String; = "special_topic"

.field public static final TYPE_APPLICATION_CENTER:Ljava/lang/String; = "application_center"

.field public static final TYPE_CID:Ljava/lang/String; = "cid"

.field public static final TYPE_CLASSIFYICATION:Ljava/lang/String; = "classification"

.field public static final TYPE_FILTER_TAG:Ljava/lang/String; = "filter_tag"

.field public static final TYPE_GAME_CENTER:Ljava/lang/String; = "game_center"

.field public static final TYPE_LAIFENG_ROOM:Ljava/lang/String; = "laifeng_room"

.field public static final TYPE_MID:Ljava/lang/String; = "mid"

.field public static final TYPE_MODULE_LABEL:Ljava/lang/String; = "module_label"

.field public static final TYPE_PODCAST:Ljava/lang/String; = "podcaster"

.field public static final TYPE_RECOMMEND_USER_LIST:Ljava/lang/String; = "recommend_user_list"

.field public static final TYPE_SCAN:Ljava/lang/String; = "scan"

.field public static final TYPE_SELECTED_LIST:Ljava/lang/String; = " SelectedList"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_THE_HISTORY:Ljava/lang/String; = "the_history"

.field public static final TYPE_THE_SEARCH:Ljava/lang/String; = "the_search"

.field public static final TYPE_THE_SHOW:Ljava/lang/String; = "the_show"

.field public static final TYPE_URL:Ljava/lang/String; = "url"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final TYPE_VIP:Ljava/lang/String; = "vip"

.field public static final TYPE_WEEK_SCHEDULE:Ljava/lang/String; = "week_schedule"

.field public static final TYPE_YOUKU:Ljava/lang/String; = "yk_video"

.field private static final serialVersionUID:J = 0x6L


# instance fields
.field public album_id:Ljava/lang/String;

.field public brief_filter:Ljava/lang/String;

.field public brief_sort_by:Ljava/lang/String;

.field public browser_type:Ljava/lang/String;

.field public channel_id:Ljava/lang/String;

.field public cpsId:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public first_tag_id:Ljava/lang/String;

.field public image_state:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public isGoAD:Z

.field public labeltop_first_id:Ljava/lang/String;

.field public labeltop_second_id:Ljava/lang/String;

.field public module_id:Ljava/lang/String;

.field public playlist_code:Ljava/lang/String;

.field public room_id:Ljava/lang/String;

.field public search_adv:Ljava/lang/String;

.field public search_word:Ljava/lang/String;

.field public skip_type:Ljava/lang/String;

.field public skip_url:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public tag_type:Ljava/lang/String;

.field public text_body:Ljava/lang/String;

.field public the_height:Ljava/lang/String;

.field public the_location:Ljava/lang/String;

.field public the_width:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public video_id:Ljava/lang/String;

.field public yk_play:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/SkipInfo;->browser_type:Ljava/lang/String;

    .line 180
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/SkipInfo;->isGoAD:Z

    .line 197
    const-string v0, "00014643"

    iput-object v0, p0, Lcom/youku/vo/SkipInfo;->cpsId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public skip(Landroid/app/Activity;)V
    .locals 18
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 208
    const-string/jumbo v2, "skip"

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v2, "cid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/tudou/service/classify/Classify;->goClassifyFeatureFragment(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    const-string/jumbo v2, "the_search"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v14, "gosearch":Landroid/content/Intent;
    const-class v2, Lcom/tudou/ui/fragment/SearchTudouActivity;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 216
    const-string/jumbo v2, "search_word"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->search_word:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v2, "search_adv"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->search_adv:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    .end local v14    # "gosearch":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "video"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 220
    const/4 v9, 0x0

    .line 221
    .local v9, "b":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/vo/SkipInfo;->isGoAD:Z

    if-eqz v2, :cond_4

    .line 222
    new-instance v9, Landroid/os/Bundle;

    .end local v9    # "b":Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 223
    .restart local v9    # "b":Landroid/os/Bundle;
    const-string v2, "intent.extra.force.back.to.home"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string/jumbo v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    const-string/jumbo v2, "video_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 229
    :cond_3
    const-string v2, "intent.extra.album.id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->playlist_code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/vo/SkipInfo;->playlist_code:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/vo/SkipInfo;->sub_title:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 238
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 239
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "video_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "intent.extra.album.id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 245
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_6
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 246
    .restart local v10    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "video_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 251
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/vo/SkipInfo;->sub_title:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 253
    .end local v9    # "b":Landroid/os/Bundle;
    :cond_8
    const-string v2, "filter_tag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 255
    const-string v2, "-2"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 256
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1, v3}, Lcom/tudou/service/classify/Classify;->goClassifyAllChannel(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V

    goto/16 :goto_0

    .line 257
    :cond_9
    const-string v2, "5"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "1686"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 258
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1}, Lcom/tudou/service/classify/Classify;->goVipActivity(Landroid/content/Context;Lcom/youku/vo/SkipInfo;)V

    goto/16 :goto_0

    .line 260
    :cond_a
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1, v3}, Lcom/tudou/service/classify/Classify;->goClassifySelectedResults(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V

    goto/16 :goto_0

    .line 261
    :cond_b
    const-string/jumbo v2, "url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "special_topic"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 262
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 264
    .local v17, "urlStr":Ljava/lang/String;
    const-string v2, "10490"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 265
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/tudou/laifeng/lfJsObj;->goWebView(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 269
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->browser_type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_1

    .line 270
    .end local v17    # "urlStr":Ljava/lang/String;
    :cond_f
    const-string/jumbo v2, "week_schedule"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 271
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lcom/tudou/service/classify/Classify;->goRowPieceTableActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_10
    const-string v2, "module_label"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 273
    const-string v2, "1"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    .line 274
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1, v3}, Lcom/tudou/service/classify/Classify;->goClassifySelectedResults(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V

    goto/16 :goto_0

    .line 275
    :cond_11
    const-string v2, "mid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 276
    new-instance v16, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/SelectedDetailActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v16, "intent":Landroid/content/Intent;
    const-string v2, "channelId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v2, "moduleId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->module_id:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "imgUrl"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->imgUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "desc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->desc:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 283
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_12
    const-string/jumbo v2, "vip"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->onVipClick(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 285
    :cond_13
    const-string/jumbo v2, "recommend_user_list"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 286
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 287
    .restart local v16    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 288
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 289
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_14
    const-string/jumbo v2, "text"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 290
    new-instance v12, Lcom/youku/widget/TudouDialog;

    sget-object v2, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 291
    .local v12, "dialog":Lcom/youku/widget/TudouDialog;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->text_body:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v2, "\u6211\u77e5\u9053\u4e86"

    new-instance v3, Lcom/youku/vo/SkipInfo$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/youku/vo/SkipInfo$1;-><init>(Lcom/youku/vo/SkipInfo;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v12, v2, v3}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-virtual {v12}, Lcom/youku/widget/TudouDialog;->show()V

    goto/16 :goto_0

    .line 300
    .end local v12    # "dialog":Lcom/youku/widget/TudouDialog;
    :cond_15
    const-string v2, "podcaster"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->user_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 301
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/NewPodcastActivity;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v11, "detailIntent":Landroid/content/Intent;
    const-string/jumbo v2, "userid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->user_id:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v2, "from"

    const-string v3, "index_skip"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 306
    .end local v11    # "detailIntent":Landroid/content/Intent;
    :cond_16
    const-string/jumbo v2, "selectness_tab_list"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 308
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 309
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v2, "cid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-class v2, Lcom/tudou/ui/activity/SelectedListActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 312
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_17
    const-string v2, " SelectedList"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 313
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/SelectedListActivity;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v15, "i":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 315
    .end local v15    # "i":Landroid/content/Intent;
    :cond_18
    const-string/jumbo v2, "the_show"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 316
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tudou/ui/activity/TheShowRankActivity;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 317
    :cond_19
    const-string/jumbo v2, "the_history"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 318
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tudou/ui/activity/PlayHistoryActivity;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 319
    :cond_1a
    const-string v2, "game_center"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 320
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 321
    .restart local v16    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/youku/gamecenter/GameCenterHomeActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    const-string/jumbo v2, "source"

    const-string v3, "6"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 324
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_1b
    const-string v2, "application_center"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 325
    invoke-static/range {p1 .. p1}, Lcom/tudou/android/TudouApi;->goAppExchangeActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 326
    :cond_1c
    const-string/jumbo v2, "scan"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 327
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/zijunlin/Zxing/CaptureActivity;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 328
    :cond_1d
    const-string v2, "classification"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 329
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/tudou/service/classify/Classify;->goClassifyHome(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 330
    :cond_1e
    const-string/jumbo v2, "yk_video"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 333
    :try_start_0
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 334
    .restart local v16    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->yk_play:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 338
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->browser_type:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1f
    const/4 v2, 0x0

    goto :goto_2

    .line 340
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_20
    const-string v2, "laifeng_room"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 341
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_21

    .line 342
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 345
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->room_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/vo/SkipInfo;->cpsId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tudou/laifeng/lfJsObj;->enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_22
    const-string v2, "SkipInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8df3\u8f6c\u7c7b\u578b\u65e0\u6cd5\u8bc6\u522b skipType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
