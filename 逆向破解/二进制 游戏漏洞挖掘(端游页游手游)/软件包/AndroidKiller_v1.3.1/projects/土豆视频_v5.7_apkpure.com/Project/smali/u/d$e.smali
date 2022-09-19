.class Lu/d$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput p1, p0, Lu/d$e;->a:I

    .line 914
    return-void
.end method

.method static synthetic a(Lu/d$e;)I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lu/d$e;->a:I

    return v0
.end method
