.class public Lcom/youku/gamecenter/data/CategoryInfo;
.super Ljava/lang/Object;
.source "CategoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    }
.end annotation


# instance fields
.field public app_count:I

.field public category_describe:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public short_name:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/CategoryInfo;->tags:Ljava/util/List;

    .line 26
    return-void
.end method
