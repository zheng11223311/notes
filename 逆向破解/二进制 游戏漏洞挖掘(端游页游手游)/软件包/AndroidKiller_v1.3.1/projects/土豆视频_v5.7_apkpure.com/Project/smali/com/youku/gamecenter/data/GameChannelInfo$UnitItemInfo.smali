.class public Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
.super Ljava/lang/Object;
.source "GameChannelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitItemInfo"
.end annotation


# instance fields
.field public bannerIndex:I

.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/gamecenter/data/GameChannelInfo$ContentItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public isShowUnitBar:Z

.field public layout:Ljava/lang/String;

.field public module_id:I

.field public position:I

.field public showEntrances:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    return-void
.end method
