.class public final Lcom/alipay/android/app/pay/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/pay/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final labelInput:[I

.field public static final labelInput_isPassword:I = 0x3

.field public static final labelInput_labelName:I = 0x0

.field public static final labelInput_maxInputLength:I = 0x4

.field public static final labelInput_miniInputHint:I = 0x2

.field public static final labelInput_rightIcon:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/android/app/pay/R$styleable;->labelInput:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
        0x7f0100b2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
