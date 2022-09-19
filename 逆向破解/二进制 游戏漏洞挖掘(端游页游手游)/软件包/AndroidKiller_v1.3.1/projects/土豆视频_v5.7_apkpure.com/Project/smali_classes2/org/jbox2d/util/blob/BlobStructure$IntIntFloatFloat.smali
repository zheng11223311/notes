.class Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
.super Ljava/lang/Object;
.source "BlobStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/util/blob/BlobStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntIntFloatFloat"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field final synthetic this$0:Lorg/jbox2d/util/blob/BlobStructure;


# direct methods
.method public constructor <init>(Lorg/jbox2d/util/blob/BlobStructure;IIFF)V
    .locals 0
    .param p2, "_a"    # I
    .param p3, "_b"    # I
    .param p4, "_c"    # F
    .param p5, "_d"    # F

    .prologue
    .line 151
    iput-object p1, p0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->this$0:Lorg/jbox2d/util/blob/BlobStructure;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->a:I

    .line 148
    iput p3, p0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->b:I

    .line 149
    iput p4, p0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 150
    iput p5, p0, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    return-void
.end method
