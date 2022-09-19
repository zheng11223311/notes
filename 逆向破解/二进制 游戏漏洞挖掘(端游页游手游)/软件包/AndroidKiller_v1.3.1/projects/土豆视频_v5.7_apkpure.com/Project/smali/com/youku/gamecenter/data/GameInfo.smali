.class public Lcom/youku/gamecenter/data/GameInfo;
.super Ljava/lang/Object;
.source "GameInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/youku/gamecenter/data/IResponseable;


# static fields
.field public static final BIGDATA_ACT_DETAIL_PAGE:I = 0x1

.field public static final BIGDATA_ACT_DOWNLOAD:I = 0x2

.field public static final DOWNLOAD_DONE:I = 0x2

.field public static final DOWNLOAD_ING:I = 0x0

.field public static final DOWNLOAD_PAUSE:I = 0x1

.field public static final INSTALLED:I = 0x4

.field public static final OTHER:I = 0x5

.field public static final UPDATEABLE:I = 0x3

.field private static final serialVersionUID:J = 0x50e4aadf8a3ee3dbL


# instance fields
.field public activity:Ljava/lang/String;

.field public appname:Ljava/lang/String;

.field public bigdata_algInfo:Ljava/lang/String;

.field public bigdata_dma:Ljava/lang/String;

.field public bigdata_type:Ljava/lang/String;

.field public category_map_type:Ljava/lang/String;

.field public category_map_type_id:Ljava/lang/String;

.field public currentLength:J

.field public current_version_code:I

.field public current_version_name:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public downloadVelocity:I

.field public download_apk_icon_path:Ljava/lang/String;

.field public download_link:Ljava/lang/String;

.field public download_link_for_update:Ljava/lang/String;

.field public download_progress:I

.field public download_version_code:I

.field public download_way:I

.field public h5_activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public isDownloadedOldVersion:Z

.field public isSlider:Z

.field public is_app:I

.field public is_promotion:I

.field public large_icon:Ljava/lang/String;

.field public large_logo:Ljava/lang/String;

.field public last_modified:Ljava/lang/String;

.field public local_apk_url:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public new_vids_item:Lcom/youku/gamecenter/data/VidItemInfo;

.field public notificationID:I

.field public on_board:Ljava/lang/String;

.field public openType:Ljava/lang/String;

.field public packagename:Ljava/lang/String;

.field public rank:I

.field public rec_words:Ljava/lang/String;

.field public recimgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recommend_type:Ljava/lang/String;

.field public scoller:Ljava/lang/String;

.field public score:D

.field public screenshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public selected_card_url:Ljava/lang/String;

.field public short_desc:Ljava/lang/String;

.field public short_type:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public slide_pic_type:I

.field public slider_h5_activity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sort_state:I

.field public specific_downloads:Ljava/lang/String;

.field public status:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public total_downloads:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public update_time:Ljava/lang/String;

.field public ver_code:I

.field public version:Ljava/lang/String;

.field public vids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public vidsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/VidItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/youku/gamecenter/data/GameInfo;->is_promotion:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/gamecenter/data/GameInfo;->score:D

    .line 53
    const-string/jumbo v0, "show_list"

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->openType:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/youku/gamecenter/data/GameInfo;->is_app:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->vids:Ljava/util/List;

    .line 62
    iput-boolean v2, p0, Lcom/youku/gamecenter/data/GameInfo;->isSlider:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->recimgs:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/data/GameInfo;->isDownloadedOldVersion:Z

    .line 105
    iput v2, p0, Lcom/youku/gamecenter/data/GameInfo;->download_way:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->h5_activities:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    .line 143
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    return-void
.end method

.method public static isGameOnboard(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 4
    .param p0, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    if-nez p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 208
    goto :goto_0
.end method


# virtual methods
.method public getGameTags()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    iget-object v4, p0, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 160
    :cond_0
    const-string v4, ""

    .line 176
    :goto_0
    return-object v4

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 166
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_2

    const-string v3, ""

    .line 167
    .local v3, "split":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v4, v4, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v3    # "split":Ljava/lang/String;
    :cond_2
    const-string v3, ","

    goto :goto_2

    .line 172
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 173
    :catch_0
    move-exception v4

    .line 176
    const-string v4, ""

    goto :goto_0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    .line 155
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public hasH5Activities()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->h5_activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPresent()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPromotion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 186
    iget v1, p0, Lcom/youku/gamecenter/data/GameInfo;->is_promotion:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
