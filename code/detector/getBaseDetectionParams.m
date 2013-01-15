function detectionParams = getBaseDetectionParams()
% Values for distanceMetric are nrmcorr, eucdist
%
% Author: saurabh.me@gmail.com (Saurabh Singh).
detectionParams = struct( ...
  'selectTopN', false, ...
  'numToSelect', 10, ...
  'useDecisionThresh', false, ...
  'overlap', 0.4, ...
  'fixedDecisionThresh', -1, ...
  'useSimilarity', false, ...
  'distanceMetric', 'nrmcorr');
end
