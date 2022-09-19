.class public Lcom/alibaba/sdk/android/system/RequestCode;
.super Ljava/lang/Object;


# static fields
.field public static OPEN_CART:I

.field public static OPEN_H5_LOGIN:I

.field public static OPEN_H5_TRADE:I

.field public static OPEN_OPENACCOUNT:I

.field public static OPEN_PAY:I

.field public static OPEN_TAOBAO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xea5b

    sput v0, Lcom/alibaba/sdk/android/system/RequestCode;->OPEN_TAOBAO:I

    const v0, 0xea5c

    sput v0, Lcom/alibaba/sdk/android/system/RequestCode;->OPEN_H5_LOGIN:I

    const v0, 0xea5d

    sput v0, Lcom/alibaba/sdk/android/system/RequestCode;->OPEN_H5_TRADE:I

    const v0, 0xea5e

    sput v0, Lcom/alibaba/sdk/android/system/RequestCode;->OPEN_PAY:I

    const v0, 0xea5f

    sput v0, Lcom/alibaba/sdk/android/system/RequestCode;->OPEN_CART:I

    const v0, 0xea60

    sput v0, Lcom/alibaba/sdk/android/system/RequestCode;->OPEN_OPENACCOUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
