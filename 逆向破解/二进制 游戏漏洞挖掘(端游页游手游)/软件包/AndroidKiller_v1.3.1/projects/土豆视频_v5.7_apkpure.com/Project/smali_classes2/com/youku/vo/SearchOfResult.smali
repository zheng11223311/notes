.class public Lcom/youku/vo/SearchOfResult;
.super Ljava/lang/Object;
.source "SearchOfResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SearchOfResult$Podcast;
    }
.end annotation


# instance fields
.field public podcasts:Lcom/youku/vo/SearchOfResult$Podcast;

.field public videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method
