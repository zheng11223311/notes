.class public Lcom/youku/vo/GuideSubResult;
.super Ljava/lang/Object;
.source "GuideSubResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public guide_title:Ljava/lang/String;

.field public tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
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
