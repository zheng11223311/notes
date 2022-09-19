.class public Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
.super Ljava/lang/Object;
.source "ClassifyScheduleItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AblumItem"
.end annotation


# instance fields
.field public album_id:Ljava/lang/String;

.field public area_name:Ljava/lang/String;

.field public bic_pic_url:Ljava/lang/String;

.field public channel_name:Ljava/lang/String;

.field public is_update:I

.field public pic_url:Ljava/lang/String;

.field public picurl_200_300:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

.field public title:Ljava/lang/String;

.field public update_episode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;)V
    .locals 1

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->this$1:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->update_episode:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->album_id:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->title:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->channel_name:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->area_name:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->pic_url:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->bic_pic_url:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->picurl_200_300:Ljava/lang/String;

    return-void
.end method
