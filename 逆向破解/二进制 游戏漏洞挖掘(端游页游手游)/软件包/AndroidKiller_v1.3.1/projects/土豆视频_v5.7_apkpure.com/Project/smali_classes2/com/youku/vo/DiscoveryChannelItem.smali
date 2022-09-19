.class public Lcom/youku/vo/DiscoveryChannelItem;
.super Ljava/lang/Object;
.source "DiscoveryChannelItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/DiscoveryChannelItem$FirstItem;
    }
.end annotation


# instance fields
.field public about_myself:Ljava/lang/String;

.field public first_item:Lcom/youku/vo/DiscoveryChannelItem$FirstItem;

.field public id:I

.field public isRunning:Z

.field public isVuser:Z

.field public name:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public sub_status:I

.field public subed_count:Ljava/lang/String;

.field public type:I

.field public video_count:Ljava/lang/String;

.field public view_count:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/DiscoveryChannelItem;->isRunning:Z

    .line 22
    return-void
.end method
