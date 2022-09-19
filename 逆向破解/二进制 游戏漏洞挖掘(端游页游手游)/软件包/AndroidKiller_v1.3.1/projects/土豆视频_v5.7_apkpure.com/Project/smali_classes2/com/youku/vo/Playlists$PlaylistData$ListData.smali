.class public Lcom/youku/vo/Playlists$PlaylistData$ListData;
.super Ljava/lang/Object;
.source "Playlists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Playlists$PlaylistData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;
    }
.end annotation


# instance fields
.field public coverPicUrl:Ljava/lang/String;

.field public firstItem:Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;

.field public itemsCount:Ljava/lang/String;

.field public lcode:Ljava/lang/String;

.field public lid:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public playTimes:Ljava/lang/String;

.field public subTimes:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/Playlists$PlaylistData;

.field public title:Ljava/lang/String;

.field public updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Playlists$PlaylistData;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/youku/vo/Playlists$PlaylistData$ListData;->this$1:Lcom/youku/vo/Playlists$PlaylistData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
