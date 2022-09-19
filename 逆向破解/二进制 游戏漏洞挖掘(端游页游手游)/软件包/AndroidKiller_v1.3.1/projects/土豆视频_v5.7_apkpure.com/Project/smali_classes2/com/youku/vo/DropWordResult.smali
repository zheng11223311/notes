.class public Lcom/youku/vo/DropWordResult;
.super Ljava/lang/Object;
.source "DropWordResult.java"


# instance fields
.field public currWordTime:J

.field public key:Ljava/lang/String;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchSuggestWord;",
            ">;"
        }
    .end annotation
.end field

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
