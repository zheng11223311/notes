.class public Lorg/openad/gemo/CGSize;
.super Ljava/lang/Object;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/openad/gemo/CGSize;->setWidth(I)V

    invoke-virtual {p0, p2}, Lorg/openad/gemo/CGSize;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/openad/gemo/CGSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/openad/gemo/CGSize;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    if-ltz p1, :cond_0

    :goto_0
    iput p1, p0, Lorg/openad/gemo/CGSize;->height:I

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 0

    if-ltz p1, :cond_0

    :goto_0
    iput p1, p0, Lorg/openad/gemo/CGSize;->width:I

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
