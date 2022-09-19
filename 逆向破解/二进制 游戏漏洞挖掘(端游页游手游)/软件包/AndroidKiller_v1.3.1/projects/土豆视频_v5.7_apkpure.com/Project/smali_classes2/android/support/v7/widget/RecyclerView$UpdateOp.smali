.class Landroid/support/v7/widget/RecyclerView$UpdateOp;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateOp"
.end annotation


# static fields
.field public static final ADD:I = 0x0

.field static final POOL_SIZE:I = 0x1e

.field public static final REMOVE:I = 0x1

.field public static final UPDATE:I = 0x2


# instance fields
.field public cmd:I

.field public itemCount:I

.field public positionStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 4898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4899
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$UpdateOp;->cmd:I

    .line 4900
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$UpdateOp;->positionStart:I

    .line 4901
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$UpdateOp;->itemCount:I

    .line 4902
    return-void
.end method
