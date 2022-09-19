.class public Lorg/openad/gemo/CGPoint;
.super Ljava/lang/Object;


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/openad/gemo/CGPoint;->setX(I)V

    invoke-virtual {p0, p2}, Lorg/openad/gemo/CGPoint;->setY(I)V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    iget v0, p0, Lorg/openad/gemo/CGPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lorg/openad/gemo/CGPoint;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lorg/openad/gemo/CGPoint;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lorg/openad/gemo/CGPoint;->y:I

    return-void
.end method
