.class public Lcom/youku/gamecenter/data/ExistGameDatasInfo;
.super Ljava/lang/Object;
.source "ExistGameDatasInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/data/ExistGameDatasInfo$GameExtraData;
    }
.end annotation


# instance fields
.field public games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/ExistGameDatasInfo$GameExtraData;",
            ">;"
        }
    .end annotation
.end field

.field public state_for_quit:I

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/ExistGameDatasInfo;->games:Ljava/util/List;

    .line 18
    return-void
.end method
