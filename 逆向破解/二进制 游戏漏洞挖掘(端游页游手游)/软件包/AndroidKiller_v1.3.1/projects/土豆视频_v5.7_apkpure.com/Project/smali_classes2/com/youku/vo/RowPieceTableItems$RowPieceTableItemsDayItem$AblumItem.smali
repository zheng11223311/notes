.class public Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;
.super Ljava/lang/Object;
.source "RowPieceTableItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AblumItem"
.end annotation


# instance fields
.field public album_id:Ljava/lang/String;

.field public area_name:Ljava/lang/String;

.field public channel_name:Ljava/lang/String;

.field public pic_url:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;

.field public title:Ljava/lang/String;

.field public update_episode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;)V
    .locals 1

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->this$1:Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->title:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->area_name:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->album_id:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->channel_name:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->update_episode:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;->pic_url:Ljava/lang/String;

    return-void
.end method
