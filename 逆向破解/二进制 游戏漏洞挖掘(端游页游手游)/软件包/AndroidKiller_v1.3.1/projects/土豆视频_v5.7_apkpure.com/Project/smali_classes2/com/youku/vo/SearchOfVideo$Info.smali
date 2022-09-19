.class public Lcom/youku/vo/SearchOfVideo$Info;
.super Ljava/lang/Object;
.source "SearchOfVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SearchOfVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field public album_id:Ljava/lang/String;

.field public skip_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/SearchOfVideo;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SearchOfVideo;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/youku/vo/SearchOfVideo$Info;->this$0:Lcom/youku/vo/SearchOfVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
