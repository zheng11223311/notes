.class public Lcom/youku/gamecenter/data/GameChannelInfo$ContentItemInfo;
.super Ljava/lang/Object;
.source "GameChannelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentItemInfo"
.end annotation


# static fields
.field public static final PAY_NO:I = 0x0

.field public static final PAY_YES:I = 0x1


# instance fields
.field public content_id:Ljava/lang/String;

.field public content_type:Ljava/lang/String;

.field public game_details_button_name:Ljava/lang/String;

.field public game_download_button_name:Ljava/lang/String;

.field public game_information:Lcom/youku/gamecenter/data/GameInfo;

.field public game_page_id:Ljava/lang/String;

.field public game_relation:Ljava/lang/String;

.field public game_vertical_image:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public intro:Ljava/lang/String;

.field public openType:Ljava/lang/String;

.field public paid:I

.field public playlist_videoid:Ljava/lang/String;

.field public pv:Ljava/lang/String;

.field public second_title:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameChannelInfo$ContentItemInfo;->game_relation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameChannelInfo$ContentItemInfo;->game_relation:Ljava/lang/String;

    const-string v2, "attached"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 282
    iget v1, p0, Lcom/youku/gamecenter/data/GameChannelInfo$ContentItemInfo;->paid:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
