.class public Lcom/tudou/service/attention/IAttention$Results;
.super Ljava/lang/Object;
.source "IAttention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/attention/IAttention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Results"
.end annotation


# instance fields
.field public code:I

.field public desc:Ljava/lang/String;

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/service/attention/IAttention$Results;->code:I

    return-void
.end method
