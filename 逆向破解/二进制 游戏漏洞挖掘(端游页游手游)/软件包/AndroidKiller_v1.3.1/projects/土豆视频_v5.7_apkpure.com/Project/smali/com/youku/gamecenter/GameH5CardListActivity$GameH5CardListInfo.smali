.class public Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;
.super Ljava/lang/Object;
.source "GameH5CardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameH5CardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameH5CardListInfo"
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->list:Ljava/util/List;

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->pageCount:I

    return-void
.end method
