.class public Lcom/corncop/virgo/VirgoImageUtil$ImagePiece;
.super Ljava/lang/Object;
.source "VirgoImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/virgo/VirgoImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePiece"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/corncop/virgo/VirgoImageUtil$ImagePiece;->index:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/corncop/virgo/VirgoImageUtil$ImagePiece;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
