.class public Lcom/youku/vo/DanmuListResult;
.super Ljava/lang/Object;
.source "DanmuListResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/DanmuListResult$DanmuResult;
    }
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DanmuListResult$DanmuResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
