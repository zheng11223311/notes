.class public Lcom/youku/vo/ClassifySkipInfo;
.super Ljava/lang/Object;
.source "ClassifySkipInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public album_id:Ljava/lang/String;

.field public brief_filter:Ljava/lang/String;

.field public brief_sort_by:Ljava/lang/String;

.field public browser_type:Ljava/lang/String;

.field public channel_id:I

.field public first_tag_id:Ljava/lang/String;

.field public image_state:Ljava/lang/String;

.field public labeltop_first_id:Ljava/lang/String;

.field public labeltop_second_id:Ljava/lang/String;

.field public module_id:Ljava/lang/String;

.field public playlist_code:Ljava/lang/String;

.field public skip_type:Ljava/lang/String;

.field public skip_url:Ljava/lang/String;

.field public tag_type:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/ClassifySkipInfo;->image_state:Ljava/lang/String;

    .line 43
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/ClassifySkipInfo;->browser_type:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "skip_type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "labeltop_first_id"    # Ljava/lang/String;
    .param p4, "labeltop_second_id"    # Ljava/lang/String;
    .param p5, "image_state"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/ClassifySkipInfo;->image_state:Ljava/lang/String;

    .line 43
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/ClassifySkipInfo;->browser_type:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/youku/vo/ClassifySkipInfo;->skip_type:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/youku/vo/ClassifySkipInfo;->title:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/youku/vo/ClassifySkipInfo;->labeltop_first_id:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/youku/vo/ClassifySkipInfo;->labeltop_second_id:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/youku/vo/ClassifySkipInfo;->image_state:Ljava/lang/String;

    .line 19
    return-void
.end method
