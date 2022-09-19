.class public Lcom/youku/vo/SubLocalscribeBean;
.super Ljava/lang/Object;
.source "SubLocalscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;
    }
.end annotation


# instance fields
.field public pg:Ljava/lang/String;

.field public pz:Ljava/lang/String;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method
