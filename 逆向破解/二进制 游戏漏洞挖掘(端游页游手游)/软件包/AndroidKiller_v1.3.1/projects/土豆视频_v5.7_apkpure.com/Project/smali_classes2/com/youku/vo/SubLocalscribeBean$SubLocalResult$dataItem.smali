.class public Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
.super Ljava/lang/Object;
.source "SubLocalscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dataItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem$storyItem;,
        Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem$guestItem;
    }
.end annotation


# instance fields
.field public aid:I

.field public albumPic:Ljava/lang/String;

.field public albumSmallPic:Ljava/lang/String;

.field public bigPic:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public episode:J

.field public formatPubDate:Ljava/lang/String;

.field public formatTotalTime:Ljava/lang/String;

.field public guests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem$guestItem;",
            ">;"
        }
    .end annotation
.end field

.field public itemID:J

.field public limit:I

.field public picurl:Ljava/lang/String;

.field public playLink:Ljava/lang/String;

.field public playNum:I

.field public playtimes:J

.field public pubDate:J

.field public story_points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem$storyItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

.field public title:Ljava/lang/String;

.field public totalTime:I

.field public type:Ljava/lang/String;

.field public uid:I

.field public updateTime_str:Ljava/lang/String;

.field public userpic:Ljava/lang/String;

.field public userpic_220_220:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->this$1:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public canDownload()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;->limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
