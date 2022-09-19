.class Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/vo/XAdInstance$XAdTargeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrequencyCapping"
.end annotation


# instance fields
.field public allowDays:I

.field public allowTimes:I

.field private costDays:I

.field private costTimes:I

.field final synthetic this$1:Lcom/youdo/vo/XAdInstance$XAdTargeting;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XAdInstance$XAdTargeting;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->this$1:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->allowDays:I

    iput p3, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->allowTimes:I

    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costDays:I

    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costTimes:I

    return-void
.end method

.method public constructor <init>(Lcom/youdo/vo/XAdInstance$XAdTargeting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;-><init>(Lcom/youdo/vo/XAdInstance$XAdTargeting;II)V

    return-void
.end method


# virtual methods
.method public canDeliver()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costDays:I

    iget v1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->allowDays:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costTimes:I

    iget v1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->allowTimes:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseDays()V
    .locals 2

    iget v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costDays:I

    iget v1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->allowDays:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costDays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costDays:I

    :cond_0
    return-void
.end method

.method public increaseTimes()V
    .locals 2

    iget v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costTimes:I

    iget v1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->allowTimes:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;->costTimes:I

    :cond_0
    return-void
.end method
