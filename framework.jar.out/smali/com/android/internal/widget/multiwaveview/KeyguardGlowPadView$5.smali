.class Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;->startWaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;)Lcom/android/internal/widget/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/KeyguardGlowPadView;)Lcom/android/internal/widget/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 774
    return-void
.end method
