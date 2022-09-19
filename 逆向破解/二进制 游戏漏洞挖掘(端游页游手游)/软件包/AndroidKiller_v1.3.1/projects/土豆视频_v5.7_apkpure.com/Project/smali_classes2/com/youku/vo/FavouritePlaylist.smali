.class public Lcom/youku/vo/FavouritePlaylist;
.super Ljava/lang/Object;
.source "FavouritePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/FavouritePlaylist$FirstItem;
    }
.end annotation


# instance fields
.field public coverPicUrl:Ljava/lang/String;

.field public creator:Ljava/lang/String;

.field public firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

.field public isdelete:Z

.field public itemsCount:Ljava/lang/String;

.field public lcode:Ljava/lang/String;

.field public playTimes:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_new:Ljava/lang/String;

.field public updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method
