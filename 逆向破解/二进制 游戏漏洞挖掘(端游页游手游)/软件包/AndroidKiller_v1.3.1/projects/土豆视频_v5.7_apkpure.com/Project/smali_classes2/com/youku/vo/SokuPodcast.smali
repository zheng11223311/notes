.class public Lcom/youku/vo/SokuPodcast;
.super Ljava/lang/Object;
.source "SokuPodcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SokuPodcast$User;
    }
.end annotation


# static fields
.field public static final ATTENTION_ED:I = 0x2

.field public static final ATTENTION_ING:I = 0x1

.field public static final ATTENTION_NOT:I = 0x3


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SokuPodcast$User;",
            ">;"
        }
    .end annotation
.end field

.field public page:I

.field public pg:I

.field public pz:I

.field public timestamp:Ljava/lang/String;

.field public total:I

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/SokuPodcast;->total:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    .line 26
    return-void
.end method
