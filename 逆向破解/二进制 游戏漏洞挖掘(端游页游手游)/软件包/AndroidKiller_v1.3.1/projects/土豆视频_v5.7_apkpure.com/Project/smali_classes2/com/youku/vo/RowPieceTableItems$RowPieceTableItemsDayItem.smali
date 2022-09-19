.class public Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;
.super Ljava/lang/Object;
.source "RowPieceTableItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/RowPieceTableItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowPieceTableItemsDayItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;
    }
.end annotation


# instance fields
.field public album:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem$AblumItem;",
            ">;"
        }
    .end annotation
.end field

.field public date:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/RowPieceTableItems;

.field public week:Ljava/lang/String;

.field public weekday:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/RowPieceTableItems;)V
    .locals 1

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;->this$0:Lcom/youku/vo/RowPieceTableItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;->date:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;->week:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/RowPieceTableItems$RowPieceTableItemsDayItem;->weekday:Ljava/lang/String;

    .line 17
    return-void
.end method
