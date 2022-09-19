.class public Lcom/alipay/android/mini/uielement/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/uielement/g$1;
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/mini/uielement/g;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static a(Lcom/alipay/android/mini/uielement/h;)Lcom/alipay/android/mini/uielement/j;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    sget-object v1, Lcom/alipay/android/mini/uielement/g$1;->a:[I

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    new-instance v0, Lcom/alipay/android/mini/uielement/an;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/an;-><init>()V

    goto :goto_0

    .line 43
    :pswitch_1
    new-instance v0, Lcom/alipay/android/mini/uielement/av;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/av;-><init>()V

    goto :goto_0

    .line 46
    :pswitch_2
    new-instance v0, Lcom/alipay/android/mini/uielement/z;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/z;-><init>()V

    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v0, Lcom/alipay/android/mini/uielement/be;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/be;-><init>()V

    goto :goto_0

    .line 52
    :pswitch_4
    new-instance v0, Lcom/alipay/android/mini/uielement/at;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/at;-><init>()V

    goto :goto_0

    .line 55
    :pswitch_5
    new-instance v0, Lcom/alipay/android/mini/uielement/az;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/az;-><init>()V

    goto :goto_0

    .line 58
    :pswitch_6
    new-instance v0, Lcom/alipay/android/mini/uielement/r;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/r;-><init>()V

    goto :goto_0

    .line 61
    :pswitch_7
    new-instance v0, Lcom/alipay/android/mini/uielement/au;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/au;-><init>()V

    goto :goto_0

    .line 64
    :pswitch_8
    new-instance v0, Lcom/alipay/android/mini/uielement/bc;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/bc;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_9
    new-instance v0, Lcom/alipay/android/mini/uielement/ar;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/ar;-><init>()V

    goto :goto_0

    .line 70
    :pswitch_a
    new-instance v0, Lcom/alipay/android/mini/uielement/t;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/t;-><init>()V

    goto :goto_0

    .line 74
    :pswitch_b
    new-instance v0, Lcom/alipay/android/mini/uielement/w;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/w;-><init>()V

    goto :goto_0

    .line 77
    :pswitch_c
    new-instance v0, Lcom/alipay/android/mini/uielement/m;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/m;-><init>()V

    goto :goto_0

    .line 80
    :pswitch_d
    new-instance v0, Lcom/alipay/android/mini/uielement/bd;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/bd;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_e
    new-instance v0, Lcom/alipay/android/mini/uielement/u;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/u;-><init>()V

    goto :goto_0

    .line 86
    :pswitch_f
    new-instance v0, Lcom/alipay/android/mini/uielement/bh;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/bh;-><init>()V

    goto :goto_0

    .line 89
    :pswitch_10
    new-instance v0, Lcom/alipay/android/mini/uielement/ap;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/ap;-><init>()V

    goto :goto_0

    .line 92
    :pswitch_11
    new-instance v0, Lcom/alipay/android/mini/uielement/k;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/k;-><init>()V

    goto :goto_0

    .line 95
    :pswitch_12
    new-instance v0, Lcom/alipay/android/mini/uielement/bf;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/bf;-><init>()V

    goto :goto_0

    .line 98
    :pswitch_13
    new-instance v0, Lcom/alipay/android/mini/uielement/aw;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/aw;-><init>()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/j;
    .locals 1

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/h;->a(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/h;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Lcom/alipay/android/mini/uielement/h;)Lcom/alipay/android/mini/uielement/j;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 112
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    sget v0, Lcom/alipay/android/mini/uielement/g;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 114
    sget v0, Lcom/alipay/android/mini/uielement/g;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/mini/uielement/g;->a:I

    goto :goto_0
.end method
