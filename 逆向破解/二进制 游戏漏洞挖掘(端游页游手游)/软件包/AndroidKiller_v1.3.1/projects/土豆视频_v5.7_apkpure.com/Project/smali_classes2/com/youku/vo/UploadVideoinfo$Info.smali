.class public Lcom/youku/vo/UploadVideoinfo$Info;
.super Ljava/lang/Object;
.source "UploadVideoinfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/UploadVideoinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field public bigPicUrl:Ljava/lang/String;

.field public channelId:I

.field public itemCode:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public picUrl_16_9:Ljava/lang/String;

.field public playTimes:Ljava/lang/String;

.field public pubDate:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/UploadVideoinfo;

.field public title:Ljava/lang/String;

.field public totalTime:Ljava/lang/String;

.field public total_vv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/UploadVideoinfo;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/vo/UploadVideoinfo$Info;->this$0:Lcom/youku/vo/UploadVideoinfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
