.class public Lcom/youku/vo/PlaylistInfo$PlaylistData;
.super Ljava/lang/Object;
.source "PlaylistInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/PlaylistInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistData"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public coverPicUrl:Ljava/lang/String;

.field public itemsCount:Ljava/lang/String;

.field public lastModifiedTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public playTimes:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/PlaylistInfo;


# direct methods
.method public constructor <init>(Lcom/youku/vo/PlaylistInfo;)V
    .locals 1

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/PlaylistInfo$PlaylistData;->this$0:Lcom/youku/vo/PlaylistInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/PlaylistInfo$PlaylistData;->playTimes:Ljava/lang/String;

    return-void
.end method
