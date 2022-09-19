.class Lcom/taobao/update/HttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/update/HttpDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOfDay"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/taobao/update/HttpDateTime$TimeOfDay;->hour:I

    .line 67
    iput p2, p0, Lcom/taobao/update/HttpDateTime$TimeOfDay;->minute:I

    .line 68
    iput p3, p0, Lcom/taobao/update/HttpDateTime$TimeOfDay;->second:I

    .line 69
    return-void
.end method
