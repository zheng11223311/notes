.class public final Lcom/sea_monster/widget/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/widget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static defDrawable:I

.field public static shape:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f010001

    sput v0, Lcom/sea_monster/widget/R$attr;->defDrawable:I

    .line 26
    const/high16 v0, 0x7f010000

    sput v0, Lcom/sea_monster/widget/R$attr;->shape:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
