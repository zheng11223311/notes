.class public Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;
.super Ljava/lang/Object;
.source "SubLocalscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubLocalscribeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubLocalResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
    }
.end annotation


# instance fields
.field public album_id:Ljava/lang/String;

.field public channel:I

.field public channelized_type:Ljava/lang/String;

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public isVuser:Z

.field public latest_update:Ljava/lang/String;

.field public pageNumber:I

.field public pageSize:I

.field public playtimes:J

.field public podcast_user_id:Ljava/lang/String;

.field public short_desc:Ljava/lang/String;

.field public smallPic:Ljava/lang/String;

.field public subed_count:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/SubLocalscribeBean;

.field public tips:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalNumberOfElements:I

.field public update_time:J

.field public video_count:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubLocalscribeBean;)V
    .locals 1

    .prologue
    .line 10
    iput-object p1, p0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->this$0:Lcom/youku/vo/SubLocalscribeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->album_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 2

    .prologue
    .line 74
    const-string v0, "album"

    iget-object v1, p0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->channelized_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
