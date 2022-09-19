.class public Lcom/youku/vo/SearchOfData;
.super Ljava/lang/Object;
.source "SearchOfData.java"


# instance fields
.field public podcast:Lcom/youku/vo/SearchOfPodcasts;

.field public podcast1:Lcom/youku/vo/SearchOfPodcasts;

.field public podcast2:Lcom/youku/vo/SearchOfPodcasts;

.field public video:Lcom/youku/vo/SearchOfVideo;

.field public video1:Lcom/youku/vo/SearchOfVideo;

.field public video2:Lcom/youku/vo/SearchOfVideo;

.field public viewType:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/SearchOfData;->viewType:I

    return-void
.end method
