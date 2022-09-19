.class public Lcom/youku/vo/MyTicketsListResult;
.super Ljava/lang/Object;
.source "MyTicketsListResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/MyTicketsListResult$Result;
    }
.end annotation


# instance fields
.field public cost:D

.field public error:I

.field public msg:Ljava/lang/String;

.field public original_error:I

.field public pnumber:Ljava/lang/String;

.field public psize:Ljava/lang/String;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MyTicketsListResult$Result;",
            ">;"
        }
    .end annotation
.end field

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public total:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
