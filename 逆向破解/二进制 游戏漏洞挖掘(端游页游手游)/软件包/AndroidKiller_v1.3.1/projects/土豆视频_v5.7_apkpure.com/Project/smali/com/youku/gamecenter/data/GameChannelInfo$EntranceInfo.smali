.class public Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;
.super Ljava/lang/Object;
.source "GameChannelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntranceInfo"
.end annotation


# static fields
.field public static emptryEntrance:Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;


# instance fields
.field public link_to:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v0, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;->emptryEntrance:Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;

    .line 139
    sget-object v0, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;->emptryEntrance:Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;->title:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;->emptryEntrance:Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;->link_to:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
