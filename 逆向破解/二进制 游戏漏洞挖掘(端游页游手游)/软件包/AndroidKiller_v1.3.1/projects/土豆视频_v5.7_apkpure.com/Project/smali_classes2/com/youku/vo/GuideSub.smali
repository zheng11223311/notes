.class public Lcom/youku/vo/GuideSub;
.super Ljava/lang/Object;
.source "GuideSub.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public error:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideSubResult;",
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

    return-void
.end method
