.class public Lorg/openad/gemo/CGRect;
.super Ljava/lang/Object;


# instance fields
.field private origin:Lorg/openad/gemo/CGPoint;

.field private size:Lorg/openad/gemo/CGSize;


# direct methods
.method public constructor <init>(Lorg/openad/gemo/CGPoint;Lorg/openad/gemo/CGSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/openad/gemo/CGRect;->setOrigin(Lorg/openad/gemo/CGPoint;)V

    invoke-virtual {p0, p2}, Lorg/openad/gemo/CGRect;->setSize(Lorg/openad/gemo/CGSize;)V

    return-void
.end method


# virtual methods
.method public getOrigin()Lorg/openad/gemo/CGPoint;
    .locals 1

    iget-object v0, p0, Lorg/openad/gemo/CGRect;->origin:Lorg/openad/gemo/CGPoint;

    return-object v0
.end method

.method public getSize()Lorg/openad/gemo/CGSize;
    .locals 1

    iget-object v0, p0, Lorg/openad/gemo/CGRect;->size:Lorg/openad/gemo/CGSize;

    return-object v0
.end method

.method public setOrigin(Lorg/openad/gemo/CGPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/gemo/CGRect;->origin:Lorg/openad/gemo/CGPoint;

    return-void
.end method

.method public setSize(Lorg/openad/gemo/CGSize;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/gemo/CGRect;->size:Lorg/openad/gemo/CGSize;

    return-void
.end method
